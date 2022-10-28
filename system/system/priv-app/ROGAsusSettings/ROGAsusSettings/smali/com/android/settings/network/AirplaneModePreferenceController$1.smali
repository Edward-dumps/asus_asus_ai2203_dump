.class Lcom/android/settings/network/AirplaneModePreferenceController$1;
.super Ljava/lang/Object;
.source "AirplaneModePreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/AirplaneModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/AirplaneModePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/AirplaneModePreferenceController;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->this$0:Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->this$0:Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/AirplaneModePreferenceController;->access$000(Lcom/android/settings/network/AirplaneModePreferenceController;)Lcom/android/settings/AirplaneModeEnabler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->this$0:Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/AirplaneModePreferenceController;->access$000(Lcom/android/settings/network/AirplaneModePreferenceController;)Lcom/android/settings/AirplaneModeEnabler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->this$0:Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-static {v1}, Lcom/android/settings/network/AirplaneModePreferenceController;->access$100(Lcom/android/settings/network/AirplaneModePreferenceController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneMode(Z)V

    .line 191
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController$1;->this$0:Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->access$200(Lcom/android/settings/network/AirplaneModePreferenceController;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
