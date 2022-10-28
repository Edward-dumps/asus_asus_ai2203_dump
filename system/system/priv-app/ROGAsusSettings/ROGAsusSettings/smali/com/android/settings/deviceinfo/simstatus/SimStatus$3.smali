.class Lcom/android/settings/deviceinfo/simstatus/SimStatus$3;
.super Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V
    .locals 0

    .line 906
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistered(I)V
    .locals 1

    .line 909
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1100(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1000(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->ims_reg_status_registered:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ims_reg_state_value"

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRegistering(I)V
    .locals 1

    .line 914
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1100(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1000(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->ims_reg_status_not_registered:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ims_reg_state_value"

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 926
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1100(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1000(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->ims_reg_status_not_registered:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "ims_reg_state_value"

    invoke-virtual {p1, p2, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    .line 919
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1100(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatus;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->access$1000(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->ims_reg_status_not_registered:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ims_reg_state_value"

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
