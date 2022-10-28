.class Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;
.super Ljava/lang/Object;
.source "FaceEnrollEducation.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceEnrollEducation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 63
    sget p1, Lcom/android/settings/R$string;->security_settings_face_enroll_education_message_accessibility:I

    goto :goto_0

    .line 64
    :cond_0
    sget p1, Lcom/android/settings/R$string;->security_settings_face_enroll_education_message:I

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {v0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->access$000(Lcom/android/settings/biometrics/face/FaceEnrollEducation;I)V

    if-eqz p2, :cond_1

    .line 68
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->access$100(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    .line 69
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->access$200(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->access$300(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    .line 72
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$1;->this$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-static {p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->access$200(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
