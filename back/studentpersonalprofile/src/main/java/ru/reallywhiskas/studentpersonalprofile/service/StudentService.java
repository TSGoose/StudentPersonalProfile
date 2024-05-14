package ru.reallywhiskas.studentpersonalprofile.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.reallywhiskas.studentpersonalprofile.domain.Student;
import ru.reallywhiskas.studentpersonalprofile.repo.StudentRepository;

@Service
@RequiredArgsConstructor
@Slf4j
@Transactional(rollbackOn = Exception.class)
public class StudentService {
    @Autowired
    private StudentRepository studentRepository;

    public Student findByNumber(String number){
        return studentRepository.findByNumber(number).orElseThrow(() -> new RuntimeException("Student not found"));
    }

    public Student save(Student student){
        return studentRepository.save(student);
    }

}
