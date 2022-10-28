.class Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment$1;
.super Ljava/lang/Object;
.source "FaceRedactionInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;Landroid/widget/Button;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;

    iput-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment$1;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment$1;->val$button:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->access$000(Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;)Landroid/content/Intent;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 130
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
