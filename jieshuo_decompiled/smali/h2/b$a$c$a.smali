.class Lh2/b$a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/b$a$c;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lh2/b$a$c;


# direct methods
.method constructor <init>(Lh2/b$a$c;IIII)V
    .locals 0

    iput-object p1, p0, Lh2/b$a$c$a;->e:Lh2/b$a$c;

    iput p2, p0, Lh2/b$a$c$a;->a:I

    iput p3, p0, Lh2/b$a$c$a;->b:I

    iput p4, p0, Lh2/b$a$c$a;->c:I

    iput p5, p0, Lh2/b$a$c$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lh2/b$a$c$a;->e:Lh2/b$a$c;

    iget-object v0, v0, Lh2/b$a$c;->a:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget v1, p0, Lh2/b$a$c$a;->a:I

    iget-object v2, p0, Lh2/b$a$c$a;->e:Lh2/b$a$c;

    iget-object v2, v2, Lh2/b$a$c;->a:Lh2/b$a;

    iget-object v2, v2, Lh2/b$a;->c:Lh2/b;

    invoke-static {v2}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androlua/LuaService;->getWidth()I

    move-result v2

    mul-int v1, v1, v2

    iget v2, p0, Lh2/b$a$c$a;->b:I

    div-int/2addr v1, v2

    iget v2, p0, Lh2/b$a$c$a;->c:I

    iget-object v3, p0, Lh2/b$a$c$a;->e:Lh2/b$a$c;

    iget-object v3, v3, Lh2/b$a$c;->a:Lh2/b$a;

    iget-object v3, v3, Lh2/b$a;->c:Lh2/b;

    invoke-static {v3}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androlua/LuaService;->getHeight()I

    move-result v3

    mul-int v2, v2, v3

    iget v3, p0, Lh2/b$a$c$a;->d:I

    div-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click(II)Z

    return-void
.end method
