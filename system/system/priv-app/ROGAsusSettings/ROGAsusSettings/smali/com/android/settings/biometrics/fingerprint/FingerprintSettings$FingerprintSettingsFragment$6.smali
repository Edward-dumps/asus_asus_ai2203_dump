.class Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$6;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$6;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$6;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$702(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z

    .line 955
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$6;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$300(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    return-void
.end method
