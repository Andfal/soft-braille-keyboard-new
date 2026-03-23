.class Lcom/reecedunn/espeak/TtsSettingsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reecedunn/espeak/TtsSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    instance-of v0, p1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-ltz p2, :cond_0

    array-length v2, v0

    if-ge p2, v2, :cond_0

    aget-object p2, v0, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/reecedunn/espeak/preference/SeekBarPreference;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/reecedunn/espeak/preference/SeekBarPreference;

    invoke-virtual {v0}, Lcom/reecedunn/espeak/preference/SeekBarPreference;->getFormatter()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p2, Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    check-cast p2, Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return v1
.end method
