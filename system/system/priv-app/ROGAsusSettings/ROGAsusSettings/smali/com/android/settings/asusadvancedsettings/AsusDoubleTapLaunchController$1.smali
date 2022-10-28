.class Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController$1;
.super Landroid/database/ContentObserver;
.source "AsusDoubleTapLaunchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;


# direct methods
.method constructor <init>(Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;Landroid/os/Handler;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController$1;->this$0:Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController$1;->this$0:Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;

    invoke-static {p1}, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->access$000(Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;)Lcom/android/settingslib/RestrictedPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController$1;->this$0:Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->access$000(Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;)Lcom/android/settingslib/RestrictedPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
