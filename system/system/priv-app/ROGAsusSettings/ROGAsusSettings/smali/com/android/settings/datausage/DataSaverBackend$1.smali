.class Lcom/android/settings/datausage/DataSaverBackend$1;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "DataSaverBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataSaverBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSaverBackend;


# direct methods
.method public static synthetic $r8$lambda$P4bK8UGFxPl9lEZD7U4QCOm0Nkg(Lcom/android/settings/datausage/DataSaverBackend$1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataSaverBackend$1;->lambda$onRestrictBackgroundChanged$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZHEXnfnXU8i-cI4XkV4Elrm5kL0(Lcom/android/settings/datausage/DataSaverBackend$1;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend$1;->lambda$onUidPoliciesChanged$0(II)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/datausage/DataSaverBackend;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend$1;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onRestrictBackgroundChanged$1(Z)V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverBackend$1;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataSaverBackend;->access$000(Lcom/android/settings/datausage/DataSaverBackend;Z)V

    return-void
.end method

.method private synthetic lambda$onUidPoliciesChanged$0(II)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverBackend$1;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {p0, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend;->access$100(Lcom/android/settings/datausage/DataSaverBackend;II)V

    return-void
.end method


# virtual methods
.method public onRestrictBackgroundChanged(Z)V
    .locals 1

    .line 189
    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/datausage/DataSaverBackend$1;Z)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUidPoliciesChanged(II)V
    .locals 1

    .line 184
    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datausage/DataSaverBackend$1;II)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
