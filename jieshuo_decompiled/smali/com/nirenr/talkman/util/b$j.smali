.class Lcom/nirenr/talkman/util/b$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b;->B(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final synthetic b:Lcom/nirenr/talkman/util/b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$j;->b:Lcom/nirenr/talkman/util/b;

    iput-object p2, p0, Lcom/nirenr/talkman/util/b$j;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$j;->b:Lcom/nirenr/talkman/util/b;

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$j;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p1, v0, p2}, Lcom/nirenr/talkman/util/b;->s(Lcom/nirenr/talkman/util/b;Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return-void
.end method
