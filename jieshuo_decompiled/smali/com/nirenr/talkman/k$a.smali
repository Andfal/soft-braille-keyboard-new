.class Lcom/nirenr/talkman/k$a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field final synthetic d:Lcom/nirenr/talkman/k;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/k;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/k$a;->d:Lcom/nirenr/talkman/k;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/nirenr/talkman/k$a;->a:I

    iput p2, p0, Lcom/nirenr/talkman/k$a;->b:I

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p1, p2}, Lcom/nirenr/talkman/k;->e(Lcom/nirenr/talkman/k;F)I

    move-result p1

    iput p1, p0, Lcom/nirenr/talkman/k$a;->c:I

    return-void
.end method
