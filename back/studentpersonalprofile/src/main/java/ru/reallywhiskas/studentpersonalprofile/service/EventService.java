package ru.reallywhiskas.studentpersonalprofile.service;


import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import ru.reallywhiskas.studentpersonalprofile.domain.Event;
import ru.reallywhiskas.studentpersonalprofile.repo.EventRepository;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Optional;
import java.util.function.BiFunction;
import java.util.function.Function;

import static java.nio.file.StandardCopyOption.REPLACE_EXISTING;
import static ru.reallywhiskas.studentpersonalprofile.constant.Constant.PHOTO_DIRECTORY;

@Service
@RequiredArgsConstructor
@Slf4j
@Transactional(rollbackOn = Exception.class)
public class EventService {
    private final EventRepository eventRepository;

    public Page<Event> getAllEvent(int page, int size){
        return eventRepository.findAll(PageRequest.of(page, size, Sort.by("name")));
    }

    public Event getEvent(Long id){
        return eventRepository.findById(id).orElseThrow(() -> new RuntimeException("Event not found"));
    }

    public Event createEvent(Event event){
        return eventRepository.save(event);
    }

    public void deleteEvent(Event event){
        eventRepository.delete(event);
    }

    public String uploadPhoto(Long id, MultipartFile file) {
        log.info("Saving picture for user ID: {}", id);
        Event event = getEvent(id);
        String photoUrl = photoFunction.apply(String.valueOf(id), file);
        event.setImg(photoUrl);
        eventRepository.save(event);
        return photoUrl;
    }

    private final Function<String, String> fileExtension = filename -> Optional.of(filename).filter(name -> name.contains("."))
            .map(name -> "." + name.substring(filename.lastIndexOf(".") + 1)).orElse(".png");

    private final BiFunction<String, MultipartFile, String> photoFunction = (id, image) -> {
        String filename = id + fileExtension.apply(image.getOriginalFilename());
        try {
            Path fileStorageLocation = Paths.get(PHOTO_DIRECTORY).toAbsolutePath().normalize();
            if(!Files.exists(fileStorageLocation)) { Files.createDirectories(fileStorageLocation); }
            Files.copy(image.getInputStream(), fileStorageLocation.resolve(filename), REPLACE_EXISTING);
            return ServletUriComponentsBuilder
                    .fromCurrentContextPath()
                    .path("/contacts/image/" + filename).toUriString();
        }catch (Exception exception) {
            throw new RuntimeException("Unable to save image");
        }
    };
}
