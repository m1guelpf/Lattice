import Foundation
import SQLiteData

#if DEBUG
final class SeedDatabase: Seeder {
	static func seed() -> Records {
		apply([seedThingsIdLikeToBuildPage])
	}

	private static func seedThingsIdLikeToBuildPage() -> Records {
		var records = Records()

//		let page = ["Things I'd like to build one day": [
//			"[[Superluminal Studio]]": [
//				"A product studio dedicated to quickly building MVP/prototypes for unique ideas": [],
//				"Get someone really good at design & a PM (at least), get great at imagining and releasing prototypes for ideas as quickly as they pop up": [],
//				"Unclear how any of this would make money, but it'd be incredibly cool": []
//			],
//			"[[Metaspace]]": [
//				"An open and permissionless namespace for namespaces, embracing the concept of relative identity.": [],
//				"Basically unbundle the [[Limbhad]] CRM, add circles, make it into a protocol, chill.": [],
//				"Still super unclear how to implement any of this (see notes for possible ideas)": []
//			],
//			"[[Limbhad]]": [
//				"Every app and data source you use, coming together.": [
//					#""Siri as an interface, if every app and website in the world was part of the Apple ecosystem""#: []
//				],
//				"Need to group all my ideas for this at some point, too much stuff even for Roam to handle 😅": []
//			],
//			"[[Interface]]": [
//				"A new Operative System, focusing around user-intent, multiplayer, and data standards/intercommunication": [],
//				"Currently too linked to [[Limbhad]] to meaningfully separate into its own thing, again need to sit down and organize notes here.": []
//			],
//			"[[Orion]]": [
//				#"A curiosity-driven co-living space, where a selected group of "excellent builders" can learn from each other and acquire the skills needed to better share their knowledge/stories with the world."#: []
//			]
//		]]

		let page = Page(id: UUID(), title: "Things I'd like to build one day")
		records.append(page)

		let superluminal = Paragraph(string: "[[Superluminal Studio]]", parentId: page.id, pageId: page.id, order: 0)
		records.append(superluminal)
		records.append(Paragraph(string: "A product studio dedicated to quickly building MVP/prototypes for unique ideas", parentId: superluminal.id, pageId: page.id, order: 0))
		records.append(Paragraph(string: "Get someone really good at design & a PM (at least), get great at imagining and releasing prototypes for ideas as quickly as they pop up", parentId: superluminal.id, pageId: page.id, order: 1))
		records.append(Paragraph(string: "Unclear how any of this would make money, but it'd be incredibly cool", parentId: superluminal.id, pageId: page.id, order: 2))

		let metaspace = Paragraph(string: "[[Metaspace]]", parentId: page.id, pageId: page.id, order: 1)
		records.append(metaspace)
		records.append(Paragraph(string: "An open and permissionless namespace for namespaces, embracing the concept of relative identity.", parentId: metaspace.id, pageId: page.id, order: 0))
		records.append(Paragraph(string: "Basically unbundle the [[Limbhad]] CRM, add circles, make it into a protocol, chill.", parentId: metaspace.id, pageId: page.id, order: 1))
		records.append(Paragraph(string: "Still super unclear how to implement any of this (see notes for possible ideas)", parentId: metaspace.id, pageId: page.id, order: 2))

		let limbhad = Paragraph(string: "[[Limbhad]]", parentId: page.id, pageId: page.id, order: 2)
		records.append(limbhad)

		let p1 = Paragraph(string: "Every app and data source you use, coming together.", parentId: limbhad.id, pageId: page.id, order: 0)
		records.append(p1)
		records.append(Paragraph(string: #""Siri as an interface, if every app and website in the world was part of the Apple ecosystem""#, parentId: p1.id, pageId: page.id, order: 0))
		records.append(Paragraph(string: "Need to group all my ideas for this at some point, too much stuff even for Roam to handle 😅", parentId: limbhad.id, pageId: page.id, order: 1))

		let interface = Paragraph(string: "[[Interface]]", parentId: page.id, pageId: page.id, order: 3)
		records.append(interface)
		records.append(Paragraph(string: "A new Operative System, focusing around user-intent, multiplayer, and data standards/intercommunication", parentId: interface.id, pageId: page.id, order: 0))
		records.append(Paragraph(string: "Currently too linked to [[Limbhad]] to meaningfully separate into its own thing, again need to sit down and organize notes here.", parentId: interface.id, pageId: page.id, order: 1))

		let orion = Paragraph(string: "[[Orion]]", parentId: page.id, pageId: page.id, order: 4)
		records.append(orion)
		records.append(Paragraph(string: #"A curiosity-driven co-living space, where a selected group of "excellent builders" can learn from each other and acquire the skills needed to better share their knowledge/stories with the world."#, parentId: orion.id, pageId: page.id, order: 0))

		return records
	}
}
#endif
