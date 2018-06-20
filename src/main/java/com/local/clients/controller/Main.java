package com.local.clients.controller;

import com.local.clients.model.Client;
import com.local.clients.repository.ClientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
public class Main {

    @Autowired
    ClientRepository clientRepository;

    @RequestMapping("/")
    public String hello(Model model) {
        return "main";
    }

    @RequestMapping("viewRegistered")
    public String viewRegisteredUsers(Model model) {
        List<Client> clientList = clientRepository.findAll();
        model.addAttribute("clients", clientList);
        return "viewRegistered";
    }

    @RequestMapping("register")
    public String registerNew(Model model){
    model.addAttribute("client", new Client());
    return "register";
}

    @RequestMapping("newClient")
    public String register(@Valid @ModelAttribute("client") Client client) {
        clientRepository.save(client);
        return "newClient";
    }
}