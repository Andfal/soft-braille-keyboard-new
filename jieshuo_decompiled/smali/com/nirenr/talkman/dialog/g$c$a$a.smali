.class Lcom/nirenr/talkman/dialog/g$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/g$c$a;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/dialog/g$c$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/g$c$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/g$c$a$a;->b:Lcom/nirenr/talkman/dialog/g$c$a;

    iput p2, p0, Lcom/nirenr/talkman/dialog/g$c$a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/g$c$a$a;->b:Lcom/nirenr/talkman/dialog/g$c$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/g$c$a;->g:Lcom/nirenr/talkman/dialog/g$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/g$c;->c:Lcom/nirenr/talkman/dialog/g;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/g;->b(Lcom/nirenr/talkman/dialog/g;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/g$c$a$a;->b:Lcom/nirenr/talkman/dialog/g$c$a;

    iget v2, v1, Lcom/nirenr/talkman/dialog/g$c$a;->b:I

    iget v3, v1, Lcom/nirenr/talkman/dialog/g$c$a;->c:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double v3, v3, v5

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/g$c$a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v5, v1

    div-double/2addr v3, v5

    iget v1, p0, Lcom/nirenr/talkman/dialog/g$c$a$a;->a:I

    add-int/lit8 v1, v1, 0x1

    int-to-double v5, v1

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/g$c$a$a;->b:Lcom/nirenr/talkman/dialog/g$c$a;

    iget v1, v1, Lcom/nirenr/talkman/dialog/g$c$a;->e:I

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click(II)Z

    return-void
.end method
