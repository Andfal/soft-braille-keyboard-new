.class Lh2/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/s;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/s;


# direct methods
.method constructor <init>(Lh2/s;)V
    .locals 0

    iput-object p1, p0, Lh2/s$a;->a:Lh2/s;

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

    iget-object p1, p0, Lh2/s$a;->a:Lh2/s;

    invoke-static {p1}, Lh2/s;->c(Lh2/s;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object p2, p0, Lh2/s$a;->a:Lh2/s;

    invoke-static {p2}, Lh2/s;->b(Lh2/s;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->splitSpeak(Ljava/lang/String;)V

    return-void
.end method
