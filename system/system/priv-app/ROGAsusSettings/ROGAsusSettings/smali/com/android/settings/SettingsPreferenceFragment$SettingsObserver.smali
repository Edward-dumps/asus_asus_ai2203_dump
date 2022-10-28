.class Lcom/android/settings/SettingsPreferenceFragment$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final DISPLAY_MODE_WITH_DOCK_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 1

    .line 884
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsObserver;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    .line 885
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "display_mode_with_dock"

    .line 882
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsObserver;->DISPLAY_MODE_WITH_DOCK_URI:Landroid/net/Uri;

    const/4 p2, 0x0

    const/4 v0, -0x1

    .line 886
    invoke-virtual {p3, p1, p2, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 892
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 893
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsObserver;->DISPLAY_MODE_WITH_DOCK_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 894
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsObserver;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->tryCatchDockingRefresh()V

    :cond_0
    return-void
.end method
