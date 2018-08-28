package com.dzhb.controller;


import com.dzhb.model.MessageEntity;
import com.dzhb.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;


@Controller
public class MessageController {

    @Autowired
    MessageRepository messageRepository;


    //首页，显示所有留言
    @RequestMapping(value = "user/messages", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        List<MessageEntity> messageList = messageRepository.findAll();
        modelMap.addAttribute("messageList", messageList);
        return "user/messages";
    }

    //添加留言
    @RequestMapping(value = "/user/messages/add", method = RequestMethod.GET)
    public String addMessage() {
        return "user/addMessage";
    }

    //用户添加留言
    @RequestMapping(value = "/user/addMessage/addP", method = RequestMethod.POST)
    public String addMessage(@ModelAttribute("message") MessageEntity messageEntity) {
        //设置留言时间为当前时间
        Date date = new Date();
        Timestamp nousedate = new Timestamp(date.getTime());
        messageEntity.setSubmitTime(nousedate);

        messageRepository.saveAndFlush(messageEntity);

        return "redirect:/user/messages";
    }

    @RequestMapping(value = "admin/messages", method = RequestMethod.GET)
    public String manageMessages(ModelMap modelMap) {
        List<MessageEntity> messageList = messageRepository.findAll();

        modelMap.addAttribute("messageList", messageList);

        return "admin/messages";
    }

    //修改留言内容
    @RequestMapping(value = "admin/messages/update/{id}", method = RequestMethod.GET)
    public String updateMessage(@PathVariable("id") Integer id, ModelMap modelMap) {
        MessageEntity messageEntity = messageRepository.findOne(id);
        modelMap.addAttribute("message", messageEntity);
        return "admin/updateMessage";
    }

    @RequestMapping(value = "admin/messages/updateP", method = RequestMethod.POST)
    public String updateMessageP(@ModelAttribute("messageP") MessageEntity messageEntity) {
        messageRepository.updateMessage(messageEntity.getMessageTitle(), messageEntity.getMessageContent(), messageEntity.getIsShow(), messageEntity.getMessageId());
        messageRepository.flush();
        return "redirect:/admin/messages";
    }

    //删除留言
    @RequestMapping("/admin/messages/delete/{id}")
    public String deleteMessage(@PathVariable("id") int id) {
        messageRepository.delete(id);
        messageRepository.flush();
        return "redirect:/admin/messages";
    }


}