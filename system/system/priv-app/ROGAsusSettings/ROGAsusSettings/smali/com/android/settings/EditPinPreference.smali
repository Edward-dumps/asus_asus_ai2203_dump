.class Lcom/android/settings/EditPinPreference;
.super Lcom/android/settingslib/CustomEditTextPreferenceCompat;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private editText:Landroid/widget/EditText;

.field private mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public isDialogOpen()Z
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4

    .line 74
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x1020003

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/settings/EditPinPreference;->editText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/16 v0, 0x12

    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/EditPinPreference;->editText:Landroid/widget/EditText;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextAlignment(I)V

    .line 83
    iget-object p1, p0, Lcom/android/settings/EditPinPreference;->editText:Landroid/widget/EditText;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 84
    iget-object p0, p0, Lcom/android/settings/EditPinPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 66
    iget-object p0, p0, Lcom/android/settings/EditPinPreference;->editText:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onDialogClosed(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, p0, p1}, Lcom/android/settings/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/settings/EditPinPreference;Z)V

    :cond_0
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    return-void
.end method

.method public showPinDialog()V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->onClick()V

    :cond_1
    return-void
.end method
