package ru.reallywhiskas.studentpersonalprofile.resource;


import lombok.RequiredArgsConstructor;

import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ru.reallywhiskas.studentpersonalprofile.domain.Event;
import ru.reallywhiskas.studentpersonalprofile.service.EventService;

import java.io.IOException;
import java.net.URI;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;

import static ru.reallywhiskas.studentpersonalprofile.constant.Constant.PHOTO_DIRECTORY;

@RestController
@RequestMapping("/events")
@RequiredArgsConstructor
public class EventController {
    private final EventService eventService;
    @GetMapping
    public ResponseEntity<Page<Event>> getEvents(@RequestParam(value = "page", defaultValue = "0") int page,
                                                 @RequestParam(value = "size", defaultValue = "10") int size){

        return ResponseEntity.ok().body(eventService.getAllEvent(page, size));
    }

    @PostMapping
    public ResponseEntity<Event> createEvent(@RequestBody Event event){
        return ResponseEntity.created(URI.create("/events/id")).body(eventService.createEvent(event));
    }

    @GetMapping("/{id}")
    public ResponseEntity<Event> getEvent(@PathVariable(value = "id") Long id){
        return ResponseEntity.ok().body(eventService.getEvent(id));
    }

    @PutMapping("/photo")
    public ResponseEntity<String> uploadPhoto(@RequestParam("id") Long id,
                                              @RequestParam("file")MultipartFile file){
        return ResponseEntity.ok().body(eventService.uploadPhoto(id, file));
    }

    @GetMapping("path = /image/{filename}")
    public byte[] getPhoto(@PathVariable("filename") String filename) throws IOException{
        return Files.readAllBytes(Paths.get(PHOTO_DIRECTORY + filename));
    }
}
