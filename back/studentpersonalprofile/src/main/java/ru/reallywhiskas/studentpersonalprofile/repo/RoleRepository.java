package ru.reallywhiskas.studentpersonalprofile.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.reallywhiskas.studentpersonalprofile.domain.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {

}
