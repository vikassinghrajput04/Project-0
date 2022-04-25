package in.co.rays.proj0.form;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * Contains Change Password form elements and their declarative input validations.
 * 
 * @author Vikas Singh
 */
public class ChangePasswordForm extends BaseForm {

    @NotEmpty
    private String oldPassword;

    @NotEmpty
    private String newPassword;

    @NotEmpty
    private String confirmPassword;

    public String getOldPassword() {
        return oldPassword;
    }

    public void setOldPassword(String oldPassword) {
        this.oldPassword = oldPassword;
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

}


