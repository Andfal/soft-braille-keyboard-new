.class Lcom/nirenr/talkman/util/b$v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b$v;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/b$v;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b$v;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$v$a;->a:Lcom/nirenr/talkman/util/b$v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$v$a;->a:Lcom/nirenr/talkman/util/b$v;

    iget-object p1, p1, Lcom/nirenr/talkman/util/b$v;->a:Lcom/nirenr/talkman/util/Music;

    invoke-virtual {p1, p3}, Lcom/nirenr/talkman/util/Music;->l(I)V

    return-void
.end method
