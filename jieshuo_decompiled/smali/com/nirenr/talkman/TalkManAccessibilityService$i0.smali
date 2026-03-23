.class Lcom/nirenr/talkman/TalkManAccessibilityService$i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->longCopy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$i0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$i0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->F(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "\\.[ \r\n]|[^a-zA-Z0-9][\\. ]+|[,!?;\u3002\uff1f\uff01\uff0c\r\n\u201c\u201d\uff1a\uff1b\\?!]+|[ \\.,!?;\u3002\uff1f\uff01\uff0c\r\n\u201c\u201d\uff1a\uff1b\\?!]+"

    invoke-static {p1, v0}, Lk2/g0;->d(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    invoke-virtual {v0, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance p2, Lcom/nirenr/talkman/dialog/EditDialog;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$i0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070304

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/nirenr/talkman/TalkManAccessibilityService$i0$a;

    invoke-direct {v3, p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$i0$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$i0;Ljava/lang/String;)V

    invoke-direct {p2, v1, v2, v0, v3}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {p2}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    return-void
.end method
