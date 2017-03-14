package ru.javarush.usersmanager.service;

import ru.javarush.usersmanager.model.User;

import java.util.List;

public interface UserService {
    void addUser(User user);
    void updateUser(User user);
    void removeUser(int id);
    User getUser(int id);
    List<User> getUsers();
    List<User> getUsers(Long page);
    List<User> getUsers(String name);
    int amountPages();
}
