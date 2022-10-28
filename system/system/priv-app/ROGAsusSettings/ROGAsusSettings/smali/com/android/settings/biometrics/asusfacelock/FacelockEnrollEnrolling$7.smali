.class Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$7;
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

    .line 500
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$7;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$7;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$2100(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$7;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$2100(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 505
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$7;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$2200(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$7;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$2200(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 507
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$7;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$200(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$7;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$2300(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->setProgressStart(Landroid/widget/TextView;)V

    return-void
.end method
