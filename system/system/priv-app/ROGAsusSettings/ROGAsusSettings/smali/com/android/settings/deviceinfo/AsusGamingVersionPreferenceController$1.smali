.class Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController$1;
.super Landroid/os/CountDownTimer;
.source "AsusGamingVersionPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->updateState(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

.field final synthetic val$preference:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;JJLandroidx/preference/Preference;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController$1;->this$0:Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    iput-object p6, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController$1;->val$preference:Landroidx/preference/Preference;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 87
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController$1;->this$0:Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController$1;->val$preference:Landroidx/preference/Preference;

    invoke-static {p1, p0}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->access$000(Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;Landroidx/preference/Preference;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AsusGamingVersionPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
