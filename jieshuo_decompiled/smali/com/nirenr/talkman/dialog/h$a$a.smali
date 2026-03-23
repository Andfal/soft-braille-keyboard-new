.class Lcom/nirenr/talkman/dialog/h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/h$a;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/h$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/h$a$a;->a:Lcom/nirenr/talkman/dialog/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/nirenr/talkman/dialog/VirtualScreen;Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/h$a$a;->a:Lcom/nirenr/talkman/dialog/h$a;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/h$a;->a:Lcom/nirenr/talkman/dialog/h;

    iget-object v0, p2, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    iget v1, p2, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iget p2, p2, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    invoke-static {p1, v0, v1, p2}, Lcom/nirenr/talkman/dialog/h;->g(Lcom/nirenr/talkman/dialog/h;Ljava/lang/String;II)V

    return-void
.end method
