.class Lcom/nirenr/talkman/TalkManAccessibilityService$m6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->addContentBlacklist(Landroid/view/accessibility/AccessibilityNodeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$m6;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$m6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$m6;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance p1, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$m6;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$m6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$m6;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$w7;->a()V

    return-void
.end method
