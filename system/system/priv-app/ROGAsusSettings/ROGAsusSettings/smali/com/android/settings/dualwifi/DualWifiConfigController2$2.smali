.class Lcom/android/settings/dualwifi/DualWifiConfigController2$2;
.super Ljava/lang/Object;
.source "DualWifiConfigController2.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dualwifi/DualWifiConfigController2;->getIpConfigFieldsTextWatcher(Landroid/widget/TextView;)Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dualwifi/DualWifiConfigController2;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$fB29kbsNZfR-C_E5SdAo8_w64Do(Lcom/android/settings/dualwifi/DualWifiConfigController2$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2$2;->lambda$afterTextChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/dualwifi/DualWifiConfigController2;Landroid/widget/TextView;)V
    .locals 0

    .line 1610
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2$2;->this$0:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2$2;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$afterTextChanged$0()V
    .locals 1

    .line 1637
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2$2;->this$0:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showWarningMessagesIfAppropriate()V

    .line 1638
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2$2;->this$0:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->enableSubmitIfAppropriate()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1623
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_4

    .line 1624
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2$2;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->gateway:I

    if-ne p1, v0, :cond_0

    .line 1625
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2$2;->this$0:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->access$000(Lcom/android/settings/dualwifi/DualWifiConfigController2;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->wifi_gateway_hint:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0

    .line 1626
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2$2;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->network_prefix_length:I

    if-ne p1, v0, :cond_1

    .line 1627
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2$2;->this$0:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->access$100(Lcom/android/settings/dualwifi/DualWifiConfigController2;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->wifi_network_prefix_length_hint:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0

    .line 1628
    :cond_1
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2$2;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->dns1:I

    if-ne p1, v0, :cond_2

    .line 1629
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2$2;->this$0:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->access$200(Lcom/android/settings/dualwifi/DualWifiConfigController2;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->wifi_dns1_hint:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    .line 1631
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2$2;->this$0:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->access$300(Lcom/android/settings/dualwifi/DualWifiConfigController2;)Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->getSubmitButton()Landroid/widget/Button;

    move-result-object p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 1634
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 1636
    :cond_4
    new-instance p1, Lcom/android/settings/dualwifi/DualWifiConfigController2$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dualwifi/DualWifiConfigController2$2;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
