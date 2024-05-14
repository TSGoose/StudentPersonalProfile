package ru.reallywhiskas.studentpersonalprofile.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.reallywhiskas.studentpersonalprofile.domain.Student;
import ru.reallywhiskas.studentpersonalprofile.repo.StudentRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
@Transactional(rollbackOn = Exception.class)
public class StudentService {
    @Autowired
    private StudentRepository studentRepository;

    public List<Student> findAll(){
        return studentRepository.findAll();
    }

    public Student findByNumber(String number){
        System.out.println(number);
        return studentRepository.findByNumber(number).get(0);
    }

    public Student save(Student student){
        return studentRepository.save(student);
    }

}
