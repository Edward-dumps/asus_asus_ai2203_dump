.class Lcom/android/settings/ethernet/EthernetSettings$6;
.super Ljava/lang/Object;
.source "EthernetSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ethernet/EthernetSettings;->updateEthernetFields()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ethernet/EthernetSettings;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/settings/ethernet/EthernetSettings;Z)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings$6;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    iput-boolean p2, p0, Lcom/android/settings/ethernet/EthernetSettings$6;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings$6;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetSettings;->access$800(Lcom/android/settings/ethernet/EthernetSettings;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/ethernet/EthernetSettings$6;->val$enable:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 573
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings$6;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetSettings;->access$900(Lcom/android/settings/ethernet/EthernetSettings;)Landroidx/preference/ListPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/ethernet/EthernetSettings$6;->val$enable:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 574
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings$6;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetSettings;->access$600(Lcom/android/settings/ethernet/EthernetSettings;)V

    .line 575
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings$6;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetSettings;->access$1000(Lcom/android/settings/ethernet/EthernetSettings;)Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/ethernet/EthernetSettings$6;->val$enable:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 576
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings$6;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetSettings;->access$1100(Lcom/android/settings/ethernet/EthernetSettings;)Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/ethernet/EthernetSettings$6;->val$enable:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 577
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings$6;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetSettings;->access$1200(Lcom/android/settings/ethernet/EthernetSettings;)Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/ethernet/EthernetSettings$6;->val$enable:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 578
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings$6;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetSettings;->access$1300(Lcom/android/settings/ethernet/EthernetSettings;)Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/ethernet/EthernetSettings$6;->val$enable:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 579
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings$6;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetSettings;->access$1400(Lcom/android/settings/ethernet/EthernetSettings;)Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/settings/ethernet/EthernetSettings$6;->val$enable:Z

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
