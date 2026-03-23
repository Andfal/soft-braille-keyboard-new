.class Lh2/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/d;


# direct methods
.method constructor <init>(Lh2/d;)V
    .locals 0

    iput-object p1, p0, Lh2/d$a;->a:Lh2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iget-object p2, p0, Lh2/d$a;->a:Lh2/d;

    invoke-static {p2}, Lh2/d;->a(Lh2/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    iget-object v0, p0, Lh2/d$a;->a:Lh2/d;

    invoke-static {v0}, Lh2/d;->b(Lh2/d;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->U()V

    return-void
.end method
