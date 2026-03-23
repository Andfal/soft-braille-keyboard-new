.class Lh2/b$a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/b$a;


# direct methods
.method constructor <init>(Lh2/b$a;)V
    .locals 0

    iput-object p1, p0, Lh2/b$a$g;->a:Lh2/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lh2/b$a$g;->a:Lh2/b$a;

    iget-object p1, p1, Lh2/b$a;->c:Lh2/b;

    invoke-static {p1}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object v0, p0, Lh2/b$a$g;->a:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->b(Lh2/b;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void
.end method
