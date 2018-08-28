package com.dzhb.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "admin", schema = "messagedemo", catalog = "")
public class AdminEntity {
    private int adminId;
    private String adminName;
    private String adminPassword;

    @Id
    @Column(name = "admin_id", nullable = false)
    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    @Basic
    @Column(name = "admin_name", nullable = true, length = 255)
    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    @Basic
    @Column(name = "admin_password", nullable = true, length = 255)
    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AdminEntity that = (AdminEntity) o;
        return adminId == that.adminId &&
                Objects.equals(adminName, that.adminName) &&
                Objects.equals(adminPassword, that.adminPassword);
    }

    @Override
    public int hashCode() {
        return Objects.hash(adminId, adminName, adminPassword);
    }
}
