.class Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/tts/TextToSpeak;

.field final synthetic b:Landroid/preference/Preference;

.field final synthetic c:Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;Lcom/nirenr/talkman/tts/TextToSpeak;Landroid/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment$1;->c:Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment$1;->a:Lcom/nirenr/talkman/tts/TextToSpeak;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment$1;->b:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment$1;->a:Lcom/nirenr/talkman/tts/TextToSpeak;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment$1;->b:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment$1;->b:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nirenr/talkman/tts/TextToSpeak;->speak(Ljava/lang/String;)Z

    return-void
.end method
