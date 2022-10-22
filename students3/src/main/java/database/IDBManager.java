package database;

import entity.Students;

import java.util.ArrayList;

public interface IDBManager {
    ArrayList<Students> getAllStudents();

    void createStudent(String surname, String name, String group, String date);

    void deleteStudents(String ids);
    }

