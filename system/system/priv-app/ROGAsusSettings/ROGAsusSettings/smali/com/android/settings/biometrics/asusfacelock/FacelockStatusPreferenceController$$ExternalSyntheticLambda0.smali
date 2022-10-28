.class public final synthetic Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController$$ExternalSyntheticLambda0;->f$0:I

    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController;->$r8$lambda$11OmR0mlFt7otZUzdOtbDKCkM5c(ILjava/lang/String;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
