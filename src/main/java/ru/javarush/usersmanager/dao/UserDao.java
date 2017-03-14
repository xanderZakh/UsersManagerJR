package ru.javarush.usersmanager.dao;

import ru.javarush.usersmanager.model.User;

import java.util.List;

public interface UserDao {
    void addUser(User user);
    void updateUser(User user);
    void removeUser(int id);
    User getUser(int id);
    int getAmountPages();
    List<User> getUsers();
    List<User> getUsers(Long page);
    List<User> getUsers(String name);
}