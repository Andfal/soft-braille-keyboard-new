.class Lcom/nirenr/talkman/settings/VoiceSetting$VoicePreferenceFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/VoiceSetting$VoicePreferenceFragment$2;->onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/VoiceSetting$VoicePreferenceFragment$2;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/VoiceSetting$VoicePreferenceFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceSetting$VoicePreferenceFragment$2$1;->a:Lcom/nirenr/talkman/settings/VoiceSetting$VoicePreferenceFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/VoiceSetting$VoicePreferenceFragment$2$1;->a:Lcom/nirenr/talkman/settings/VoiceSetting$VoicePreferenceFragment$2;

    iget-object p2, p1, Lcom/nirenr/talkman/settings/VoiceSetting$VoicePreferenceFragment$2;->c:Landroid/content/Context;

    iget-object v0, p1, Lcom/nirenr/talkman/settings/VoiceSetting$VoicePreferenceFragment$2;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/VoiceSetting$VoicePreferenceFragment$2;->d:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/nirenr/talkman/settings/VoiceSetting$VoicePreferenceFragment;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
