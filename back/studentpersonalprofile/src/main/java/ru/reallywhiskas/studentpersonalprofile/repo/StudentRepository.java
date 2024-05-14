package ru.reallywhiskas.studentpersonalprofile.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import ru.reallywhiskas.studentpersonalprofile.domain.Student;

import java.util.Optional;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {
    @Query("SELECT u FROM student u WHERE u.number = ?1")
    Optional<Student> findByNumber(String number);
}
