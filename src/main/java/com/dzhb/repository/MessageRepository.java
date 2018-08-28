package com.dzhb.repository;


import com.dzhb.model.MessageEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public interface MessageRepository extends JpaRepository<MessageEntity, Integer> {
    //修改留言
    @Modifying
    @Transactional
    @Query("update MessageEntity message set message.messageTitle=:qTitle, message.messageContent=:qContent, message.isShow=:qIsShow where message.messageId=:qId")
    void updateMessage(@Param("qTitle") String messageTitle, @Param("qContent") String content,
                       @Param("qIsShow") Byte isShow, @Param("qId") int messageId);
}
