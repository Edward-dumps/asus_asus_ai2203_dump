.class Lcom/android/settings/display/ScreenColorModeController$ScreenModeOptionObserver;
.super Landroid/database/ContentObserver;
.source "ScreenColorModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ScreenColorModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenModeOptionObserver"
.end annotation


# instance fields
.field private final mPreference:Landroidx/preference/Preference;

.field final synthetic this$0:Lcom/android/settings/display/ScreenColorModeController;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/ScreenColorModeController;Landroidx/preference/Preference;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/settings/display/ScreenColorModeController$ScreenModeOptionObserver;->this$0:Lcom/android/settings/display/ScreenColorModeController;

    .line 177
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 178
    iput-object p2, p0, Lcom/android/settings/display/ScreenColorModeController$ScreenModeOptionObserver;->mPreference:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string p1, "ScreenColorMode"

    const-string v0, "ScreenModeOptionObserver onChange"

    .line 183
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p1, p0, Lcom/android/settings/display/ScreenColorModeController$ScreenModeOptionObserver;->this$0:Lcom/android/settings/display/ScreenColorModeController;

    invoke-static {p1}, Lcom/android/settings/display/ScreenColorModeController;->access$100(Lcom/android/settings/display/ScreenColorModeController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "asus_splendid_screen_mode_option"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 185
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorModeController$ScreenModeOptionObserver;->this$0:Lcom/android/settings/display/ScreenColorModeController;

    invoke-static {v0}, Lcom/android/settings/display/ScreenColorModeController;->access$200(Lcom/android/settings/display/ScreenColorModeController;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorModeController$ScreenModeOptionObserver;->this$0:Lcom/android/settings/display/ScreenColorModeController;

    invoke-static {v0, p1}, Lcom/android/settings/display/ScreenColorModeController;->access$202(Lcom/android/settings/display/ScreenColorModeController;I)I

    .line 187
    iget-object p1, p0, Lcom/android/settings/display/ScreenColorModeController$ScreenModeOptionObserver;->this$0:Lcom/android/settings/display/ScreenColorModeController;

    iget-object p0, p0, Lcom/android/settings/display/ScreenColorModeController$ScreenModeOptionObserver;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Lcom/android/settings/display/ScreenColorModeController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
