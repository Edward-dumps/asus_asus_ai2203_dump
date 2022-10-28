.class Lcom/android/settings/network/MobileNetworkPreferenceController$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "MobileNetworkPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/MobileNetworkPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->access$000(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    .line 179
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->access$100(Lcom/android/settings/network/MobileNetworkPreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
