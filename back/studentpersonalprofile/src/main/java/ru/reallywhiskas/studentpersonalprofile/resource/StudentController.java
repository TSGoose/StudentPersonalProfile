package ru.reallywhiskas.studentpersonalprofile.resource;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import ru.reallywhiskas.studentpersonalprofile.domain.Student;
import ru.reallywhiskas.studentpersonalprofile.service.StudentService;

import java.util.List;

@RestController
@RequestMapping("/student")
@RequiredArgsConstructor
public class StudentController {
    private final StudentService studentService;

    @GetMapping
    public ResponseEntity<Student> findByNumber(@RequestBody String number){
        return ResponseEntity.ok().body(studentService.findByNumber(number));
    }

    @GetMapping("/all")
    public ResponseEntity<List<Student>> findAllStudents(){
        return ResponseEntity.ok().body(studentService.findAll());
    }

    @PatchMapping
    public ResponseEntity<Student> updateStudent(@RequestBody Student student){
        return ResponseEntity.ok().body(studentService.save(student));
    }

}
