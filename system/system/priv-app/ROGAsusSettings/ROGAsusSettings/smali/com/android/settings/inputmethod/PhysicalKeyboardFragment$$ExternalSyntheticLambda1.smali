.class public final synthetic Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

.field public final synthetic f$1:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    iput-object p2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda1;->f$1:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    iget-object p0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda1;->f$1:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->$r8$lambda$Zk6nkCaRAQ-uDzuNxMVhhfAoAmw(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
