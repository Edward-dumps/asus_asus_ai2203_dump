.class public final synthetic Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dualwifi/DualWifiSettings;

.field public final synthetic f$1:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

.field public final synthetic f$2:Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    iput-object p3, p0, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/dualwifi/DualWifiSettings;->$r8$lambda$Z5S3oM_jf03aCoehigslH_PcRWc(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
