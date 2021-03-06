package com.example.aplikacja_dyzury.all_users;

import com.example.aplikacja_dyzury.data_model.DoctorTitle;
import com.example.aplikacja_dyzury.repository.DoctorTitleRepo;
import com.example.aplikacja_dyzury.data_model.User;
import com.example.aplikacja_dyzury.repository.UserRepository;
import com.example.aplikacja_dyzury.nav_and_themes.NonRegisteredMenuBar;
import com.example.aplikacja_dyzury.service.UserService;
import com.vaadin.flow.component.button.Button;
import com.vaadin.flow.component.button.ButtonVariant;
import com.vaadin.flow.component.combobox.ComboBox;
import com.vaadin.flow.component.notification.Notification;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.textfield.EmailField;
import com.vaadin.flow.component.textfield.PasswordField;
import com.vaadin.flow.component.textfield.TextField;
import com.vaadin.flow.data.binder.Binder;
import com.vaadin.flow.data.binder.ValidationResult;
import com.vaadin.flow.data.validator.EmailValidator;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@PageTitle("Rejestracja")
@Route(value = "formUser", layout = NonRegisteredMenuBar.class)
public class FormAddUser extends VerticalLayout {
    private final TextField firstName;
    private final TextField lastName;
    private final ComboBox<DoctorTitle> profTitle;
    private final EmailField email;
    private final PasswordField password;
    private final Binder<User> binder;

    @Autowired
    public FormAddUser(UserService userService, DoctorTitleRepo doctorTitleRepo, UserRepository userRepository) {
        String width = "300px";

        firstName = new TextField("Imię");
        firstName.setWidth(width);

        lastName = new TextField("Nazwisko");
        lastName.setPreventInvalidInput(true);
        lastName.setWidth(width);

        profTitle = new ComboBox<>("Tytuł naukowy");
        populateDoctorTitleList(doctorTitleRepo, width);


        email = new EmailField("Email");
        email.setClearButtonVisible(true);
        email.setWidth(width);

        password = new PasswordField("Hasło");
        password.setWidth(width);


        add(firstName, lastName, profTitle, email, password);

        Button save = new Button("Dodaj");
        save.addThemeVariants(ButtonVariant.LUMO_PRIMARY);

        HorizontalLayout buttons = new HorizontalLayout(save);
        add(buttons);




        binder = new Binder<>(User.class);
        User user = new User();
        defineFormValidation(user);


        save.addClickListener(event -> {
            binder.validate();
            if (binder.isValid()) {
                System.out.println(user);

                List<User> alreadyExistingUsers = userRepository.findByEmailAndFirstNameAndLastName(
                        email.getValue(),firstName.getValue(),lastName.getValue());

                if (alreadyExistingUsers.isEmpty()) {
                    try {

                        userService.addWithDefaultRole(user);
                        Notification.show("Użytkownik dodany!", 1000, Notification.Position.MIDDLE);

                    } catch (Exception e) {

                        Notification.show("Błąd rejestracji. Skontaktuj się z administratorem.", 1000, Notification.Position.MIDDLE);
                    }
                } else {
                    Notification.show("Taki użytkownik już istnieje.", 1000, Notification.Position.MIDDLE);
                }


            }


        });




    }

    private void populateDoctorTitleList(DoctorTitleRepo doctorTitleRepo, String width) {
        List<DoctorTitle> titleList = doctorTitleRepo.findAll();
        if (!titleList.isEmpty()) {
            profTitle.setItems(titleList);
            profTitle.setItemLabelGenerator(DoctorTitle::getType);
        }
        profTitle.setWidth(width);
    }

    private void defineFormValidation(User user) {
        //minimum 1 cyfra, minimum 1 małą litera, minimum 1 duża, minimum 1 znak specjalny,bez pustych znaków, minimum 8 znaków
//        String patternPassword = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$";
        //wersja bez znaków specjalnych
        String patternPassword = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=\\S+$).{8,}$";
        // imię nie może zawierać cyfr, name cannot contain numbers
        String patternNames = "^[^\\d\\s]+$";


        binder.forField(firstName)
                .asRequired("Pole wymagane.")
                .withValidator((value, context) -> {
                    if (!value.matches(patternNames)) return ValidationResult.error(
                            "Pole nie może zawierać spacji ani cyfr");
                    else return ValidationResult.ok();
                })
                .bind(User::getFirstName, User::setFirstName);

        binder.forField(lastName)
                .asRequired("Pole wymagane.")
                .withValidator((value, context) -> {
                    if (!value.matches(patternNames)) return ValidationResult.error(
                            "Pole nie może zawierać spacji ani cyfr");
                    else return ValidationResult.ok();
                })
                .bind(User::getLastName, User::setLastName);
        binder.forField(profTitle)
                .asRequired("Pole wymagane.")
                .bind(User::getDoctorTitle, User::setDoctorTitle);

        binder.forField(email)
                .asRequired("Pole wymagane.")
                .withValidator(new EmailValidator("Niepoprawna składnia adresu email"))
                .bind(User::getEmail, User::setEmail);
        binder.forField(password)
                .asRequired("Pole wymagane.")
                .withValidator((value, context) -> {
                    if (!value.matches(patternPassword)) return ValidationResult.error(
                            "Hasło musi mieć długość minimum 8 znaków bez spacji, a także zawierać minimum: jedną dużą literę, " +
                                    "jedną małą literę, jedną cyfrę. ");
                    else return ValidationResult.ok();
                })
                .bind(User::getPassword, User::setPassword);
        binder.setBean(user);
    }
}
