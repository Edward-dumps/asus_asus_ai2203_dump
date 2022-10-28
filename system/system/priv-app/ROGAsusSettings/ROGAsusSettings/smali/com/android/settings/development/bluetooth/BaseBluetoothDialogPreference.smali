.class public abstract Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "BaseBluetoothDialogPreference.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference$Callback;

.field protected mRadioButtonIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mRadioButtonIdsFilter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mRadioButtonStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSummaryStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIdsFilter:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonStrings:Ljava/util/List;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mSummaryStrings:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIdsFilter:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonStrings:Ljava/util/List;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mSummaryStrings:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIdsFilter:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonStrings:Ljava/util/List;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mSummaryStrings:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIdsFilter:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonStrings:Ljava/util/List;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mSummaryStrings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected generateSummary(I)Ljava/lang/String;
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mSummaryStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get summary of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Size is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mSummaryStrings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseBluetoothDlgPref"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->getDefaultIndex()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mSummaryStrings:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->getDefaultIndex()I

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->bluetooth_select_a2dp_codec_streaming_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mSummaryStrings:Ljava/util/List;

    .line 145
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v1, v2

    .line 143
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected getDefaultIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract getRadioButtonGroupId()I
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8

    .line 66
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mCallback:Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference$Callback;

    const-string v1, "BaseBluetoothDlgPref"

    if-nez v0, :cond_0

    const-string p0, "Unable to show dialog by the callback is null"

    .line 68
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    const-string p0, "Unable to show dialog by the view and string size are not matched"

    .line 72
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mCallback:Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference$Callback;

    invoke-interface {v0}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference$Callback;->getCurrentConfigIndex()I

    move-result v0

    if-ltz v0, :cond_8

    .line 76
    iget-object v2, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    goto/16 :goto_3

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->getRadioButtonGroupId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    if-nez v2, :cond_3

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to show dialog by no radio button group: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->getRadioButtonGroupId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 87
    :cond_3
    iget-object v3, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 88
    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mCallback:Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference$Callback;

    invoke-interface {v0}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference$Callback;->getSelectableIndex()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    .line 92
    :goto_0
    iget-object v4, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonStrings:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v3, v4, :cond_6

    .line 93
    iget-object v4, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    if-nez v4, :cond_4

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to show dialog by no radio button:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_4
    iget-object v6, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonStrings:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 102
    iget-object v6, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIdsFilter:Ljava/util/List;

    iget-object v7, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    move v5, v2

    .line 101
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_6
    sget v1, Lcom/android/settings/R$id;->bluetooth_audio_codec_help_info:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object p0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne v0, p0, :cond_7

    .line 110
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 112
    :cond_7
    sget p0, Lcom/android/settings/R$string;->bluetooth_select_a2dp_codec_type_help_info:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    .line 113
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void

    .line 77
    :cond_8
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to show dialog by the incorrect index: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mCallback:Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference$Callback;

    if-nez p1, :cond_0

    const-string p0, "BaseBluetoothDlgPref"

    const-string p1, "Callback is null"

    .line 120
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mRadioButtonIds:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference$Callback;->onIndexUpdated(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public setCallback(Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference$Callback;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->mCallback:Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference$Callback;

    return-void
.end method
