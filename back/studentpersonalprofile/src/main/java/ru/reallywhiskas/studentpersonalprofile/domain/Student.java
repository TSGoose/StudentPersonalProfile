package ru.reallywhiskas.studentpersonalprofile.domain;


import com.fasterxml.jackson.annotation.JsonInclude;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import static com.fasterxml.jackson.annotation.JsonInclude.Include.NON_DEFAULT;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@JsonInclude(NON_DEFAULT)
@Table(name = "students")
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    String number;
    String fullName;
    @ManyToOne
    @JoinColumn(name = "Institute.id")
    Institute institute;
    @ManyToOne
    @JoinColumn(name = "Specialization.id")
    Specialization specialization;
    @ManyToOne
    @JoinColumn(name = "Group.id")
    Group group;
    String phone;
    String mail;
    String studentImg;
}
