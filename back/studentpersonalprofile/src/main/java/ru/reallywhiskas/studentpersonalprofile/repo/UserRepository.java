package ru.reallywhiskas.studentpersonalprofile.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.reallywhiskas.studentpersonalprofile.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
