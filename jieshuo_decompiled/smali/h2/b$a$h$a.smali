.class Lh2/b$a$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/b$a$h;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lh2/b$a$h;


# direct methods
.method constructor <init>(Lh2/b$a$h;I)V
    .locals 0

    iput-object p1, p0, Lh2/b$a$h$a;->b:Lh2/b$a$h;

    iput p2, p0, Lh2/b$a$h$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lh2/b$a$h$a;->b:Lh2/b$a$h;

    iget-object v0, v0, Lh2/b$a$h;->b:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    sget-object v1, Lh2/b;->i:Ljava/util/ArrayList;

    iget v2, p0, Lh2/b$a$h$a;->a:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setText(Ljava/lang/String;)Z

    return-void
.end method
