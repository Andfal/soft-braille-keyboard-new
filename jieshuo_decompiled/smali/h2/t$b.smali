.class Lh2/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/t;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/t;


# direct methods
.method constructor <init>(Lh2/t;)V
    .locals 0

    iput-object p1, p0, Lh2/t$b;->a:Lh2/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object p1, p0, Lh2/t$b;->a:Lh2/t;

    invoke-static {p1}, Lh2/t;->a(Lh2/t;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object p2, p0, Lh2/t$b;->a:Lh2/t;

    invoke-static {p2}, Lh2/t;->c(Lh2/t;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    iget-object p1, p0, Lh2/t$b;->a:Lh2/t;

    invoke-static {p1}, Lh2/t;->a(Lh2/t;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const p2, 0x7f070374

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    const/4 p1, 0x1

    return p1
.end method
