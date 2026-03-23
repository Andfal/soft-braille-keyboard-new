.class Lcom/nirenr/talkman/dialog/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/g;->e(Lcom/nirenr/talkman/ai/OcrResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ai/OcrResult;

.field final synthetic b:Lcom/nirenr/talkman/dialog/g;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/g;Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/g$a;->b:Lcom/nirenr/talkman/dialog/g;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/g$a;->a:Lcom/nirenr/talkman/ai/OcrResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/g$a;->b:Lcom/nirenr/talkman/dialog/g;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/g;->b(Lcom/nirenr/talkman/dialog/g;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/g$a;->a:Lcom/nirenr/talkman/ai/OcrResult;

    invoke-virtual {v0}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->U()V

    return-void
.end method
