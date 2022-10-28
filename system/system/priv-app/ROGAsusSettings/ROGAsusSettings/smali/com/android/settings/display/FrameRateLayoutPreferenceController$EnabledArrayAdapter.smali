.class public Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FrameRateLayoutPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/FrameRateLayoutPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnabledArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private isEnabled:Z

.field private mCheckedIndex:I

.field final synthetic this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/FrameRateLayoutPreferenceController;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 523
    iput-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    .line 524
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    const/4 p1, 0x0

    .line 520
    iput-boolean p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;->isEnabled:Z

    const/4 p1, -0x1

    .line 521
    iput p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;->mCheckedIndex:I

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 529
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020014

    .line 530
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    .line 531
    iget-boolean v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;->isEnabled:Z

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 532
    iget p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;->mCheckedIndex:I

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 534
    :goto_0
    sget p0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 535
    sget p3, Lcom/android/settings/R$id;->blank1:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 536
    sget v1, Lcom/android/settings/R$id;->blank2:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    if-nez p1, :cond_1

    .line 538
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 542
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 556
    iget-boolean p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;->isEnabled:Z

    return p0
.end method

.method public setCheckedIndex(I)V
    .locals 0

    .line 566
    iput p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;->mCheckedIndex:I

    .line 567
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameRatePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iput-boolean p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$EnabledArrayAdapter;->isEnabled:Z

    .line 562
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
