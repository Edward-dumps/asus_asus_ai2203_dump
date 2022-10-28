.class Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$4;
.super Ljava/lang/Object;
.source "FacelockEnrollEnrolling.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->initView()V
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

    .line 268
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$4;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    const/4 v0, 0x0

    .line 273
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    .line 274
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$4;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$700(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$4;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$900(Landroid/media/Image;I)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$802(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;[B)[B

    .line 277
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$4;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1002(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 282
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 286
    :goto_0
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_1
    return-void

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 288
    :cond_2
    throw p0
.end method
