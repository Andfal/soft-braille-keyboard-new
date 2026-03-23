.class Lcom/nirenr/talkman/settings/VoiceCmdShare$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/VoiceCmdShare$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/VoiceCmdShare$4;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/VoiceCmdShare$4;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare$4$1;->a:Lcom/nirenr/talkman/settings/VoiceCmdShare$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare$4$1;->a:Lcom/nirenr/talkman/settings/VoiceCmdShare$4;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/VoiceCmdShare$4;->b:Lcom/nirenr/talkman/settings/VoiceCmdShare;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/VoiceCmdShare;->c(Lcom/nirenr/talkman/settings/VoiceCmdShare;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/VoiceCmdShare$4$1;->a:Lcom/nirenr/talkman/settings/VoiceCmdShare$4;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/VoiceCmdShare$4;->a:Ljava/lang/String;

    new-instance v0, Lcom/nirenr/talkman/settings/VoiceCmdShare$4$1$1;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/VoiceCmdShare$4$1$1;-><init>(Lcom/nirenr/talkman/settings/VoiceCmdShare$4$1;)V

    const-string v1, "cmd"

    invoke-static {p1, v1, p2, v0}, Lcom/nirenr/talkman/util/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return-void
.end method
