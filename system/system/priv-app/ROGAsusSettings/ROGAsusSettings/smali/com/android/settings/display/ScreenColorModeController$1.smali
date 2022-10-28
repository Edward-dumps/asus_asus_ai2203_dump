.class Lcom/android/settings/display/ScreenColorModeController$1;
.super Ljava/lang/Object;
.source "ScreenColorModeController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ScreenColorModeController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ScreenColorModeController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenColorModeController;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/display/ScreenColorModeController$1;->this$0:Lcom/android/settings/display/ScreenColorModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorModeController$1;->this$0:Lcom/android/settings/display/ScreenColorModeController;

    invoke-static {v0}, Lcom/android/settings/display/ScreenColorModeController;->access$000(Lcom/android/settings/display/ScreenColorModeController;)Landroidx/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 83
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x14010000

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "com.asus.splendid"

    const-string v1, "com.asus.splendid.AsusSplendidActivity"

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object p0, p0, Lcom/android/settings/display/ScreenColorModeController$1;->this$0:Lcom/android/settings/display/ScreenColorModeController;

    invoke-static {p0}, Lcom/android/settings/display/ScreenColorModeController;->access$100(Lcom/android/settings/display/ScreenColorModeController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
