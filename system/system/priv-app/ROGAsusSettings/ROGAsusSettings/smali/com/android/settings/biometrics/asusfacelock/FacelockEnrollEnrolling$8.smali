.class Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$8;
.super Ljava/lang/Object;
.source "FacelockEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->setTextViewState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$8;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$8;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$2200(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$8;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->asus_security_settings_facelock_enroll_complete2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 562
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$8;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$2400(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$8;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$2500(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$8;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$2500(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
